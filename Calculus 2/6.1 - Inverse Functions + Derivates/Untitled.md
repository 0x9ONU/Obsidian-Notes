Date: 26th January 2023
Date Modified: 2023-02-02 16:25
File Folder: 6.1 - Inverse Functions + Derivates

async () => {
      try {
        const response = await this.getRequest("https://api.quotable.io/random");
        const json = await response.json();
        const author = json.author;
        const quote = json.content;
        const new_content = `> ${quote}
> \u2014 <cite>${author}</cite>`;
        return new_content;
      } catch (error) {
        new TemplaterError("Error generating daily quote");
        return "Error generating daily quote";
      }
    }

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```


