.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;
.super Ljava/lang/Object;
.source "LensTabMenuContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onCollapseRequested()V
.end method

.method public abstract onInitialize()V
.end method

.method public abstract onTabSelected(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSettingValue"
        }
    .end annotation
.end method
