.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;
.super Ljava/lang/Object;
.source "ZoomContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;"
    }
.end annotation


# virtual methods
.method public abstract cancelZoomLevelAnimation()V
.end method

.method public abstract changeLensButton(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "inputType",
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract enableTouchEvent()V
.end method

.method public abstract extendNormalPositionArea()V
.end method

.method public abstract hideLensButton()V
.end method

.method public abstract horizontalScrollSlider(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation
.end method

.method public abstract initializeLensButtonBackground(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation
.end method

.method public abstract initializeShortcutBackground(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation
.end method

.method public abstract initializeShortcutList()V
.end method

.method public abstract initializeSlider()V
.end method

.method public abstract isSliderShowing()Z
.end method

.method public abstract makeShortcutAdapter()V
.end method

.method public abstract refreshChildViewVisibility()V
.end method

.method public abstract refreshExtendPosition()V
.end method

.method public abstract refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buttonList",
            "defaultValue",
            "commandArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAllViews()V
.end method

.method public abstract removeZoomAutoHideMessage()V
.end method

.method public abstract resetBaseLine()V
.end method

.method public abstract resetChildView()V
.end method

.method public abstract resetLocalVariable()V
.end method

.method public abstract restartZoomAutoHideMessage()V
.end method

.method public abstract restartZoomTextHideRunnable()V
.end method

.method public abstract scrollSlider(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation
.end method

.method public abstract setIgnoreScrollEvent(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLensButtonBackground(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation
.end method

.method public abstract setShortcutBackground(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation
.end method

.method public abstract setShortcutData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shortcutData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSliderPadding()V
.end method

.method public abstract setZoomBarMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "barCountMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setZoomConditionChecker(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mZoomConditionChecker"
        }
    .end annotation
.end method

.method public abstract setZoomProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showZoomShortcut()V
.end method

.method public abstract showZoomSlider(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract showZoomText()V
.end method

.method public abstract speakZoomTts(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract updateLensButtonBackground(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blackAreaBottomPosition",
            "isExtend"
        }
    .end annotation
.end method

.method public abstract updateShortcutBackground(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blackAreaBottomPosition",
            "isExtend"
        }
    .end annotation
.end method

.method public abstract updateZoomText(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation
.end method

.method public abstract updateZoomValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation
.end method
