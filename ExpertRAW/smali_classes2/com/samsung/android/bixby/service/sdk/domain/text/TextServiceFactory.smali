.class public final Lcom/samsung/android/bixby/service/sdk/domain/text/TextServiceFactory;
.super Ljava/lang/Object;
.source "TextServiceFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLanguageIdentifier()Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static createLanguageTranslator()Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    move-result-object v0

    return-object v0
.end method

.method public static createSearchQuerySuggester()Lcom/samsung/android/bixby/service/sdk/domain/text/suggest/SearchQuerySuggester;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/text/suggest/SearchQuerySuggester;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/suggest/SearchQuerySuggester;

    move-result-object v0

    return-object v0
.end method

.method public static createSmsClassifier()Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;

    move-result-object v0

    return-object v0
.end method

.method public static createSmsKeywordExtractor()Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;

    move-result-object v0

    return-object v0
.end method
