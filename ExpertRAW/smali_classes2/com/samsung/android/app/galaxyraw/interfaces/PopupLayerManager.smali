.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;
.super Ljava/lang/Object;
.source "PopupLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;,
        Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;,
        Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;
    }
.end annotation


# virtual methods
.method public abstract getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract hideAllPopup()V
.end method

.method public abstract hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public varargs abstract hideVisiblePopup([Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation
.end method

.method public abstract isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "subId"
        }
    .end annotation
.end method

.method public varargs abstract isPopupVisible([Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation
.end method

.method public abstract setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "isAllow"
        }
    .end annotation
.end method

.method public abstract setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "count"
        }
    .end annotation
.end method

.method public abstract setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "enabled"
        }
    .end annotation
.end method

.method public abstract showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "subId"
        }
    .end annotation
.end method

.method public abstract showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "subId",
            "data"
        }
    .end annotation
.end method

.method public abstract showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "data"
        }
    .end annotation
.end method

.method public abstract showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "data",
            "listener"
        }
    .end annotation
.end method
