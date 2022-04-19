.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$XufJVvVekkm2VgDg7qv17orgajM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$XufJVvVekkm2VgDg7qv17orgajM;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$XufJVvVekkm2VgDg7qv17orgajM;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->lambda$changeAeAfUiState$0(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V

    return-void
.end method
