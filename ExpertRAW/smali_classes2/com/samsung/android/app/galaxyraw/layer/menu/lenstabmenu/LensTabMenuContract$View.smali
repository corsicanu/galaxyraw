.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;
.super Ljava/lang/Object;
.source "LensTabMenuContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getSelectedTabSettingValue()I
.end method

.method public abstract hideLensTab()V
.end method

.method public abstract refreshLayout()V
.end method

.method public abstract refreshTab(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabSettingValue",
            "needForceRefreshTabViews"
        }
    .end annotation
.end method

.method public abstract setTabInitPosition(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract startMenuLaunchAnimation()V
.end method
