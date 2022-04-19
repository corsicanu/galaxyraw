.class public final synthetic Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$ClusterInterface$MGd7PfeXpMjcas98QZBFoEqLeYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$ClusterInterface$MGd7PfeXpMjcas98QZBFoEqLeYo;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$ClusterInterface$MGd7PfeXpMjcas98QZBFoEqLeYo;->f$0:F

    check-cast p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;->lambda$assignScore$0(FLcom/samsung/android/rapidmomentengine/data/ResultInfo;)V

    return-void
.end method
