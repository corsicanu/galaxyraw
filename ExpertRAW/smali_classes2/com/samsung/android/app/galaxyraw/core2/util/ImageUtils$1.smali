.class Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;
.super Landroid/util/SparseArray;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const v0, 0x44363159

    const-string v1, "DEPTH16"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x101

    const-string v1, "DEPTH_POINT_CLOUD"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x29

    const-string v1, "FLEX_RGB_888"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x2a

    const-string v1, "FLEX_RGBA_8888"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x100

    const-string v1, "JPEG"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x10

    const-string v1, "NV16"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x11

    const-string v1, "NV21"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22

    const-string v1, "PRIVATE"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x25

    const-string v1, "RAW10"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x26

    const-string v1, "RAW12"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x24

    const-string v1, "RAW_PRIVATE"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x20

    const-string v1, "RAW_SENSOR"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    const-string v1, "RGB_565"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x23

    const-string v1, "YUV_420_888"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x27

    const-string v1, "YUV_422_888"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x28

    const-string v1, "YUV_444_888"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x14

    const-string v1, "YUY2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const v0, 0x32315659

    const-string v1, "YV12"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const v0, 0x48454946

    const-string v1, "HEIF"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const v0, 0x20203859

    const-string v1, "Y8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    const v0, 0x20363159

    const-string v1, "Y16"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;->put(ILjava/lang/Object;)V

    return-void
.end method
