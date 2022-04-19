.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$ViewPropertyAnimatorHelper$liVcaxbX7rXgzl7DgK-HzcTog1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$ViewPropertyAnimatorHelper$liVcaxbX7rXgzl7DgK-HzcTog1g;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$ViewPropertyAnimatorHelper$liVcaxbX7rXgzl7DgK-HzcTog1g;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$ViewPropertyAnimatorHelper$liVcaxbX7rXgzl7DgK-HzcTog1g;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$ViewPropertyAnimatorHelper$liVcaxbX7rXgzl7DgK-HzcTog1g;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/ViewPropertyAnimatorHelper;->lambda$startDefaultBounceAnimation$0(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
