.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestQueue$j8SnRXTKS-YyhjGpBeF8EvhJfEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestQueue$j8SnRXTKS-YyhjGpBeF8EvhJfEQ;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestQueue$j8SnRXTKS-YyhjGpBeF8EvhJfEQ;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestQueue$j8SnRXTKS-YyhjGpBeF8EvhJfEQ;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestQueue$j8SnRXTKS-YyhjGpBeF8EvhJfEQ;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->lambda$prepareToStop$0$RequestQueue(Ljava/lang/Runnable;)V

    return-void
.end method
