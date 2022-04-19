.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessDBHelper$A__ELICbXO2C6EUKPMihQ8Ptdz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessDBHelper$A__ELICbXO2C6EUKPMihQ8Ptdz8;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessDBHelper$A__ELICbXO2C6EUKPMihQ8Ptdz8;->f$0:Landroid/content/Context;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->lambda$updateMpDB$7(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
