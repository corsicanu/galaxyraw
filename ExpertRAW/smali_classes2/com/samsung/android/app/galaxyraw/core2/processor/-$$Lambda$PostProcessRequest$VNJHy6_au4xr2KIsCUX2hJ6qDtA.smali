.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;->f$1:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;->f$1:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->lambda$new$0(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Ljava/lang/Integer;)V

    return-void
.end method
