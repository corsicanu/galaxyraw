.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->lambda$postToUiThread$3$CommonEngine(Ljava/lang/Runnable;)V

    return-void
.end method
