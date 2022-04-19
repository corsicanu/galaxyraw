.class Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;
.super Ljava/util/HashMap;
.source "CommandBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->CREATE_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$q2Gg_Q337AmVAqp41Rw5fxufnXs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
