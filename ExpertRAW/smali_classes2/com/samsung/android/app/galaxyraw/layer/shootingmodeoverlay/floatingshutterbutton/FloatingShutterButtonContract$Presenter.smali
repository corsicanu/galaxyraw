.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract$Presenter;
.super Ljava/lang/Object;
.source "FloatingShutterButtonContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onFloatingCameraButtonRemoved()V
.end method

.method public abstract onFloatingCameraButtonTouchUp(Landroid/graphics/Rect;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation
.end method
