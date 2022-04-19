.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceRecognitionEventCallback"
.end annotation


# virtual methods
.method public abstract onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onExtractFeatureData([Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "featureData",
            "camDevice"
        }
    .end annotation
.end method
