.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$C6Nw89Y5W_bPXhTyJQXOIwRKaVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$C6Nw89Y5W_bPXhTyJQXOIwRKaVk;->f$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$C6Nw89Y5W_bPXhTyJQXOIwRKaVk;->f$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->lambda$clear$0$MenuLayerPresenter(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
