.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LensDirtyDetectCallback"
.end annotation


# virtual methods
.method public abstract onLensDirtyDetectChanged(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "lensDirtyDetect",
            "camDevice"
        }
    .end annotation
.end method
