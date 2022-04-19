.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandGestureDetectionInfoCallback"
.end annotation


# virtual methods
.method public abstract onHandGestureDetected(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handGestureMode",
            "handGestureInfo",
            "camDevice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/container/HandGestureInfo;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice;",
            ")V"
        }
    .end annotation
.end method
