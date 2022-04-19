.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$2eJugXoFF2-z6GwVWXpTcCG2q5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$2eJugXoFF2-z6GwVWXpTcCG2q5A;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$2eJugXoFF2-z6GwVWXpTcCG2q5A;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$onDestroy$8$GalaxyRaw(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;)V

    return-void
.end method
