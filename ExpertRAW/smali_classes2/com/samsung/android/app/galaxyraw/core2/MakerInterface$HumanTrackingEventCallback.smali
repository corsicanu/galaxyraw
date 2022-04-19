.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HumanTrackingEventCallback"
.end annotation


# virtual methods
.method public abstract onHumanTrackingData([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "faces",
            "bodies",
            "camDevice"
        }
    .end annotation
.end method
