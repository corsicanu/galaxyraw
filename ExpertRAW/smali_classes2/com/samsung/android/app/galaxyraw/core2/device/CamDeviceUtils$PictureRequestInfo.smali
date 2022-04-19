.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;
.super Ljava/lang/Object;
.source "CamDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PictureRequestInfo"
.end annotation


# instance fields
.field private final mCallbackHolder:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

.field private final mHasThumbnailTarget:Z

.field private final mRequestIndex:I

.field private final mTargetCount:I

.field private final mTotalRequestCount:I


# direct methods
.method constructor <init>(IZLcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;II)V
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
            "targetCount",
            "hasThumbnailTarget",
            "callbackHolder",
            "requestIndex",
            "totalRequestCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mTargetCount:I

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mHasThumbnailTarget:Z

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mCallbackHolder:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mRequestIndex:I

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mTotalRequestCount:I

    return-void
.end method


# virtual methods
.method getCallbackHolder()Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mCallbackHolder:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    return-object p0
.end method

.method getRequestIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mRequestIndex:I

    return p0
.end method

.method getTargetCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mTargetCount:I

    return p0
.end method

.method getTotalRequestCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mTotalRequestCount:I

    return p0
.end method

.method hasThumbnailTarget()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->mHasThumbnailTarget:Z

    return p0
.end method
