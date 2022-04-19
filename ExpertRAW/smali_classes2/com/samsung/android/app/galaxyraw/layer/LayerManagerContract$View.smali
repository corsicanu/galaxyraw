.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$View;
.super Ljava/lang/Object;
.source "LayerManagerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation
.end method
