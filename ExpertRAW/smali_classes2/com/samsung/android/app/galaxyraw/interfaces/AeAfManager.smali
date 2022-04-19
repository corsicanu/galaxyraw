.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;
.super Ljava/lang/Object;
.source "AeAfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;
    }
.end annotation


# virtual methods
.method public abstract changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation
.end method

.method public abstract enableFocusPeaking(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableMultiAf(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;
.end method

.method public abstract registerAeAfUiStateChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract resetAeAfAwb()V
.end method

.method public abstract resetAeAfLock()V
.end method

.method public abstract resetAeLock()V
.end method

.method public abstract resetAfLock()V
.end method

.method public abstract resetTouchAeAf()V
.end method

.method public abstract resetTouchEv()V
.end method

.method public abstract resetTrackingAf()V
.end method

.method public abstract setAeAfLock(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setAeLock(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setAfLock(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setAutoFocusEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setMultiAfChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setTouchAeAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation
.end method

.method public abstract setTrackingAfChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract startEvResetTimer()V
.end method

.method public abstract startTouchAeAfResetTimer()V
.end method

.method public abstract stopEvResetTimer()V
.end method

.method public abstract stopTouchAeAfResetTimer()V
.end method

.method public abstract unlockAwb()V
.end method

.method public abstract unregisterAeAfUiStateChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
