.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$WdvoSPHnKvw3i3oqcjL1uhRp5Sc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$WdvoSPHnKvw3i3oqcjL1uhRp5Sc;->f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$WdvoSPHnKvw3i3oqcjL1uhRp5Sc;->f$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->lambda$stop$2$AeAfPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method
