.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;
.super Ljava/lang/Object;
.source "MenuLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract clearMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method

.method public abstract createMenuView(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method

.method public abstract onHideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method

.method public abstract onShowMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method
