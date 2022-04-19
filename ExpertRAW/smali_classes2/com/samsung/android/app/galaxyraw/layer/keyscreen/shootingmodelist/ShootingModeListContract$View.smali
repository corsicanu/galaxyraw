.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;
.super Ljava/lang/Object;
.source "ShootingModeListContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;"
    }
.end annotation


# virtual methods
.method public abstract refreshListData(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeResourceMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshListPosition(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract refreshOverlayViewVisibility(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract retryChangeShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract setAdapter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeListAdapter"
        }
    .end annotation
.end method

.method public abstract setCenterBackgroundWidthChangeListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setInitialShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract setLastViewScrollChangeListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/LastViewScrollChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract stopChangeShootingModeRunnable()V
.end method
