.class public interface abstract Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.super Ljava/lang/Object;
.source "CameraOrientationEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraOrientationEventListener"
.end annotation


# static fields
.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final ORIENTATION_UNKNOWN:I = -0x1


# virtual methods
.method public abstract onCameraOrientationChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation
.end method
