.class Lccsancom/applovin/impl/sdk/utils/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/utils/q;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/utils/q;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/q;->d(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/q;->b(Lccsancom/applovin/impl/sdk/utils/q;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsancom/applovin/impl/sdk/utils/q;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished parsing in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlParser"

    invoke-virtual {v2, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/q;->c(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/util/Stack;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/applovin/impl/sdk/utils/q$a;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsancom/applovin/impl/sdk/utils/q;Lccsancom/applovin/impl/sdk/utils/q$a;)Lccsancom/applovin/impl/sdk/utils/q$a;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/q;->e(Lccsancom/applovin/impl/sdk/utils/q;)Lccsancom/applovin/impl/sdk/utils/q$a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/q;->d(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/utils/q$a;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/q;->d(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDocumentLocator(Lccsanorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsancom/applovin/impl/sdk/utils/q;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "XmlParser"

    const-string v2, "Begin parsing..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsancom/applovin/impl/sdk/utils/q;J)J

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    iget-object p3, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p3}, Lccsancom/applovin/impl/sdk/utils/q;->c(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/util/Stack;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Stack;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/q;->c(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/utils/q$a;

    :cond_0
    new-instance p3, Lccsancom/applovin/impl/sdk/utils/q$a;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {v0, p4}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsancom/applovin/impl/sdk/utils/q;Lccsanorg/xml/sax/Attributes;)Ljava/util/Map;

    move-result-object p4

    invoke-direct {p3, p2, p4, p1}, Lccsancom/applovin/impl/sdk/utils/q$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lccsancom/applovin/impl/sdk/utils/p;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lccsancom/applovin/impl/sdk/utils/q$a;->a(Lccsancom/applovin/impl/sdk/utils/p;)V

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/q;->c(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p3, p0, Lccsancom/applovin/impl/sdk/utils/q$1;->a:Lccsancom/applovin/impl/sdk/utils/q;

    invoke-static {p3}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsancom/applovin/impl/sdk/utils/q;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to process element <"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "XmlParser"

    invoke-virtual {p3, p4, p2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lccsanorg/xml/sax/SAXException;

    const-string p3, "Failed to start element"

    invoke-direct {p2, p3, p1}, Lccsanorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
