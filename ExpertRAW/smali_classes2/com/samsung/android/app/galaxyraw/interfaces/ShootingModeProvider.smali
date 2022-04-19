.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;
.super Ljava/lang/Object;
.source "ShootingModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;
    }
.end annotation


# virtual methods
.method public abstract getCurrentShootingModeName()Ljava/lang/String;
.end method

.method public abstract getCurrentShootingModeTitle()Ljava/lang/String;
.end method

.method public abstract getFeatureProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;
.end method

.method public abstract getInitialShootingMode(Landroid/content/Intent;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "isInMultiWindowMode"
        }
    .end annotation
.end method

.method public abstract initializeView()V
.end method

.method public abstract isActivated()Z
.end method

.method public abstract isCurrentShootingModeId(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation
.end method

.method public abstract isShootingAvailable()Z
.end method

.method public abstract onActivate()V
.end method

.method public abstract onInactivate()V
.end method

.method public abstract onWatchEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract setEngine(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation
.end method

.method public abstract setShootingMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "isFacingSwitch"
        }
    .end annotation
.end method
