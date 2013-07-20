# This file is add by BYD for config Build infomation.

export BUILD_NUMBER=29
export BUILD_DISPLAY_ID_IVERSION="W101HM_${BUILD_NUMBER}_20130719"
export CUST_BUILD_VERSION="v0.00.00_20130719"

export CUST_PRODUCT_NAME=
export CUST_PRODUCT_SKU=

if [ "$TARGET_PRODUCT" = "bonsai_wifi" ] ;then
export CUST_PRODUCT_NAME="Bonsai"
export CUST_PRODUCT_SKU="WiFi"

elif [ "$TARGET_PRODUCT" = "bonsai_3g" ] ;then
export CUST_PRODUCT_NAME="Bonsai"
export CUST_PRODUCT_SKU="3G"



else
   echo "** Not a valid product: $TARGET_PRODUCT"
fi

export CUST_BUILD_ID=${CUST_PRODUCT_NAME}_${CUST_PRODUCT_SKU}_${CUST_BUILD_VERSION}

echo "Build number is set as: $BUILD_NUMBER"
echo "Build internal version is set as: $BUILD_DISPLAY_ID_IVERSION"
echo "Cust build id is set as: $CUST_BUILD_ID"

rm -f $OUT/system/build.prop
