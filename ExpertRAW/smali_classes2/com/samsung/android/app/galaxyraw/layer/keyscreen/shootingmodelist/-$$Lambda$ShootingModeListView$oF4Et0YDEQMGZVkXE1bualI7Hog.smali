.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;

.field public final synthetic f$1:F

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;->f$0:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;->f$1:F

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;->f$0:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;->f$1:F

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$oF4Et0YDEQMGZVkXE1bualI7Hog;->f$2:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->lambda$setInitialShootingMode$6(Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;FILcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V

    return-void
.end method
