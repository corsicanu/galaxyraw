.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;->f$1:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$PictureRequestType$ZrG_xi4n68kvbVMoEPRcDkdJGHg;->f$1:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->lambda$getPictureRequestType$0(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result p0

    return p0
.end method
