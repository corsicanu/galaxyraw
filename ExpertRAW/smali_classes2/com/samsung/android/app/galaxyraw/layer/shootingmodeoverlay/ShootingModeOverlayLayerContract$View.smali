.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;
.super Ljava/lang/Object;
.source "ShootingModeOverlayLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract performHideScreenFlash()V
.end method

.method public abstract performStartScreenFlash()V
.end method

.method public abstract setBackButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method
