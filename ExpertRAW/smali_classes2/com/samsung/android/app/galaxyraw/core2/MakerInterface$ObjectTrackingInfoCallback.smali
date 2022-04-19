.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ObjectTrackingInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingState;
    }
.end annotation


# virtual methods
.method public abstract onObjectTrackingInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "objectTrackingInfo",
            "camDevice"
        }
    .end annotation
.end method
