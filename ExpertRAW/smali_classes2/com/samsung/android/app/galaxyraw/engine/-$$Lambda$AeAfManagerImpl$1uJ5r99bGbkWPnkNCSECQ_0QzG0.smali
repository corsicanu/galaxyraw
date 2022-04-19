.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->lambda$changeAeAfUiState$1$AeAfManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method
