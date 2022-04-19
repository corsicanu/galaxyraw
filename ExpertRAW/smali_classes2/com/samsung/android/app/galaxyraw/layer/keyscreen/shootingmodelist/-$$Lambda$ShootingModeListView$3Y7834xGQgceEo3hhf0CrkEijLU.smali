.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$3Y7834xGQgceEo3hhf0CrkEijLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$3Y7834xGQgceEo3hhf0CrkEijLU;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$3Y7834xGQgceEo3hhf0CrkEijLU;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->lambda$changeFontStyle$17(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;)V

    return-void
.end method
