.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$04bIBacrInMkK_uABc1jojFbVtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$04bIBacrInMkK_uABc1jojFbVtI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$04bIBacrInMkK_uABc1jojFbVtI;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->lambda$getSqlSelectionString$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
