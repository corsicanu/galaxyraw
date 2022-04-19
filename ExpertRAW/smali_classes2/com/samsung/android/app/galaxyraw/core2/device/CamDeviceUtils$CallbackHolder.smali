.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;
.super Ljava/lang/Object;
.source "CamDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

.field private final mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "thumbnailCallback",
            "pictureDepthCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->mCallback:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->mPictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    return-void
.end method


# virtual methods
.method getCallback()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->mCallback:Ljava/lang/Object;

    return-object p0
.end method

.method getPictureDepthCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->mPictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    return-object p0
.end method

.method getThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    return-object p0
.end method
