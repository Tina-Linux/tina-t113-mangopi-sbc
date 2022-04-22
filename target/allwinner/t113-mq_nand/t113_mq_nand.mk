$(call inherit-product-if-exists, target/allwinner/r528s2-common/r528s2-common.mk)

PRODUCT_PACKAGES +=

PRODUCT_COPY_FILES +=

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := musicbox

PRODUCT_BRAND := allwinner
PRODUCT_NAME := t113_mq_nand
PRODUCT_DEVICE := t113-mq_nand
PRODUCT_MODEL := Allwinner t113 mq board
