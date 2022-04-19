.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DynamicShotCaptureDurationCallback"
.end annotation


# virtual methods
.method public abstract onDynamicShotCaptureDurationChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "dynamicShotCaptureDuration",
            "camDevice"
        }
    .end annotation
.end method
