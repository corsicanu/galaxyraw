.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordingMotionSpeedModeInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedMode;
    }
.end annotation


# virtual methods
.method public abstract onRecordingMotionSpeedModeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "recordingMotionSpeedModeInfo",
            "camDevice"
        }
    .end annotation
.end method
