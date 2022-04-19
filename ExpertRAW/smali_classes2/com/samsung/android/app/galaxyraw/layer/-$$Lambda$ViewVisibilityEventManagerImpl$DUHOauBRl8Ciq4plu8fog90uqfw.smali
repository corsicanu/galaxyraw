.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ViewVisibilityEventManagerImpl$DUHOauBRl8Ciq4plu8fog90uqfw;->f$1:Z

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;->lambda$sendViewVisibilityEvent$1(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;ZLcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    return-void
.end method
