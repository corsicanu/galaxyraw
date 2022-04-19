.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$jyWiP4UlzL5ID9UmWe0xmjul3yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/AttachFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/AttachFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$jyWiP4UlzL5ID9UmWe0xmjul3yo;->f$0:Lcom/samsung/android/app/galaxyraw/AttachFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$jyWiP4UlzL5ID9UmWe0xmjul3yo;->f$0:Lcom/samsung/android/app/galaxyraw/AttachFragment;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->lambda$onViewCreated$3$AttachFragment(Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;)V

    return-void
.end method
