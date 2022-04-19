.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceDetectionInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;
    }
.end annotation


# virtual methods
.method public abstract onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "faceDetectionInfo",
            "camDevice"
        }
    .end annotation
.end method
