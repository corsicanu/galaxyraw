.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$oJ3OP8BVOIPIzXkAHT9cM2Agbf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$oJ3OP8BVOIPIzXkAHT9cM2Agbf0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$oJ3OP8BVOIPIzXkAHT9cM2Agbf0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->lambda$onAfInfoChanged$0(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;)V

    return-void
.end method
