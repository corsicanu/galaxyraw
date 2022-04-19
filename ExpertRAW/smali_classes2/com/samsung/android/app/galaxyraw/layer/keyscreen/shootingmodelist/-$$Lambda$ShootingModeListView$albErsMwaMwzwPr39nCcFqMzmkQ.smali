.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$albErsMwaMwzwPr39nCcFqMzmkQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$albErsMwaMwzwPr39nCcFqMzmkQ;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$albErsMwaMwzwPr39nCcFqMzmkQ;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->lambda$refreshListPosition$3(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
