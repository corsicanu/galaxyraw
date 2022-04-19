.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;
.super Ljava/lang/Object;
.source "ShootingModeLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;
    }
.end annotation


# virtual methods
.method public abstract addView(Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract setBackKeyEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setVolumeKeyEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
