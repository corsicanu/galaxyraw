.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PalmDetectionEventCallback"
.end annotation


# virtual methods
.method public abstract onPalmDetection(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestamp",
            "palm",
            "camDevice"
        }
    .end annotation
.end method
