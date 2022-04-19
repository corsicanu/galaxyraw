.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;
.super Ljava/lang/Object;
.source "ViewVisibilityEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract registerListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewIdSet",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "isVisible"
        }
    .end annotation
.end method

.method public abstract unregisterListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewIdSet",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;",
            ")V"
        }
    .end annotation
.end method
