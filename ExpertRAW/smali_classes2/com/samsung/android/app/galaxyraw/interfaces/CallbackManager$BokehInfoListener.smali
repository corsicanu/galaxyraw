.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BokehInfoListener"
.end annotation


# virtual methods
.method public abstract onBokehInfoChanged(I[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bokehState",
            "bokehFocusedRects",
            "bokehCropRegion"
        }
    .end annotation
.end method
