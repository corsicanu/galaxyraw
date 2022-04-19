.class public Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;
.super Ljava/lang/Object;
.source "PictureDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;,
        Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;
    }
.end annotation


# static fields
.field public static final PROCESSED_OPTION_ULTRA_WIDE_DISTORTION:I = 0x1


# instance fields
.field private final mFormat:I

.field private final mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

.field private mProcessedOption:I

.field private final mResult:Landroid/hardware/camera2/CaptureResult;

.field private final mSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "size",
            "result"
        }
    .end annotation

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;-><init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V

    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "size",
            "result",
            "processedOption"
        }
    .end annotation

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;-><init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V

    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;ILcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "size",
            "result",
            "processedOption",
            "picType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mFormat:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mResult:Landroid/hardware/camera2/CaptureResult;

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mProcessedOption:I

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-void
.end method


# virtual methods
.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getImageFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mFormat:I

    return p0
.end method

.method public getPicType()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public getProcessedOption()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mProcessedOption:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mSize:Landroid/util/Size;

    return-object p0
.end method

.method public setProcessedOption(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->mProcessedOption:I

    return-void
.end method
