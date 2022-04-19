.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;
.super Ljava/lang/Object;
.source "QuickSettingContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAttachStateChangeListener"
        }
    .end annotation
.end method

.method public abstract hideSubQuickSetting()V
.end method

.method public abstract refreshItem(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation
.end method

.method public abstract refreshItemList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setButtonClickListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setButtonTouchListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setResizableMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isResizableMode"
        }
    .end annotation
.end method

.method public abstract showSubQuickSetting(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemList",
            "selectedItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ")V"
        }
    .end annotation
.end method
