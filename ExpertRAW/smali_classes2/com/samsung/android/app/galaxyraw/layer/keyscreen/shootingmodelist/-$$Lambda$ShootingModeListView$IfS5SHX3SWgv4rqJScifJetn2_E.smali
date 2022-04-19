.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;->f$0:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;->f$1:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;->f$0:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;->f$1:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$IfS5SHX3SWgv4rqJScifJetn2_E;->f$2:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->lambda$changeFocusWidth$16(IIILcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V

    return-void
.end method
