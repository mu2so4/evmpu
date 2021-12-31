#include <iostream>
#include <libusb.h>
#include <stdio.h>
using namespace std;

void printdev(libusb_device *dev);

int main() {
    libusb_device **devs;
    libusb_context *ctx = NULL;
    int r;
    ssize_t cnt;
    ssize_t i;
    r = libusb_init(&ctx);
    if(r < 0) {
        fprintf(stderr,
        "Ошибка: инициализация не выполнена, код: %d.\n", r);
        return 1;
    }
    libusb_set_debug(ctx, 3);
    cnt = libusb_get_device_list(ctx, &devs);
        if(cnt < 0){
        fprintf(stderr,
        "Ошибка %d: список USB устройств не получен.\n", r);
        return 1;
    }
    printf("found devices: %ld\n", cnt);
    printf("===========================================================\n");
    printf("class\tsubcl\tvendor\tproduct\tserial\tname\tvendor\n");
    printf("ID\tID\tID\tID\tnumber\n");
    for(i = 0; i < cnt; i++) {
        printdev(devs[i]);
    }
    printf("===========================================================\n");
    libusb_free_device_list(devs, 1);
    libusb_exit(ctx);
    return 0;
}

void printdev(libusb_device *dev) {
    libusb_device_descriptor desc;
    libusb_device_handle* hand = NULL;
    int r = libusb_get_device_descriptor(dev, &desc);
    if (r < 0) {
        fprintf(stderr, "Ошибка: дескриптор устройства не получен, код: %d.\n",r);
        return;
    }

    r = libusb_open(dev, &hand);
    if(r < 0) {
        std::cerr << "error: handle not opened\n";
        return;
    }
    unsigned char serial_number[256], manufacturer[256], product[256];
    int sn_ret = libusb_get_string_descriptor_ascii(hand, desc.iSerialNumber, serial_number, 256);
    int pr_ret = libusb_get_string_descriptor_ascii(hand, desc.iProduct, product, 256);
    int mn_ret = libusb_get_string_descriptor_ascii(hand, desc.iManufacturer, manufacturer, 256);


    printf("0x%02x\t0x%02x\t%d\t%d\t%s\t%s\t%s\n",
            (int)desc.bDeviceClass,
            (int)desc.bDeviceSubClass,
            desc.idVendor,
            desc.idProduct,
            (sn_ret < 0 ? ((unsigned char *) "----") : serial_number),
            (mn_ret < 0 ? ((unsigned char *) "----") : product),
            (pr_ret < 0 ? ((unsigned char *) "----") : manufacturer)
    );
    libusb_close(hand);
}
