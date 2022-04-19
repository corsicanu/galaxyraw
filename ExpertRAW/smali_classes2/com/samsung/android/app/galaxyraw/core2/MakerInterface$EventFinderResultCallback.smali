.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventFinderResultCallback"
.end annotation


# virtual methods
.method public abstract onEventFinderResult(Ljava/lang/Long;Ljava/lang/Integer;[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "eventFinderMode",
            "eventFinderResult",
            "camDevice"
        }
    .end annotation
.end method
