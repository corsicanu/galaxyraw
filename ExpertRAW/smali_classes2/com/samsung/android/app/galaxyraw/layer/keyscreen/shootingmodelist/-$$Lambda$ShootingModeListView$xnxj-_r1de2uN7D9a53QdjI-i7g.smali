.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$xnxj-_r1de2uN7D9a53QdjI-i7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$xnxj-_r1de2uN7D9a53QdjI-i7g;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$xnxj-_r1de2uN7D9a53QdjI-i7g;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$xnxj-_r1de2uN7D9a53QdjI-i7g;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$xnxj-_r1de2uN7D9a53QdjI-i7g;->f$1:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->lambda$translateList$11$ShootingModeListView(ILcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;)V

    return-void
.end method
