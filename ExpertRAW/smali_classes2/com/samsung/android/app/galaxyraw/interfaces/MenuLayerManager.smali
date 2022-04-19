.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;
.super Ljava/lang/Object;
.source "MenuLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;
    }
.end annotation


# virtual methods
.method public abstract collapseMenu()V
.end method

.method public abstract hideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method

.method public abstract hideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Landroid/animation/Animator;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menuId",
            "animation"
        }
    .end annotation
.end method

.method public abstract isActive(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method

.method public abstract showMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation
.end method
