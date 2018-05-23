# Simple Tree rendering

Hi, all :-)

I'm reading all the the documentation about OctoberCMS, and i'm now in that section...

[Traits](https://octobercms.com/docs/database/traits)

For a best cpomprehension (As my english is rather poor), I systematically apply what I read...

And I meet a trouble with the SimpleTree 's trait :

I'don't succeed in rendering the front view as indicate the documentation

I presume the base is correct: As we can see in this [screen 's capture](http://prntscr.com/jlm3ep)  at the bottom right (The browser) , the field used for the hierarchy relation (parr)  is well interpreatedwhen we dieAndDump an array of the toNested() method...

But if I see the corresponding page in front end (wich get the default.htm of my testing component for that), the code doesn't get any view :-(...

```twig
{% macro renderChildren(item) %}
    {% import _self as SELF %}
    {% if item.children is not empty %}
        <ul>
            {% for child in item.children %}
                <li>{{ child.name }}{{ SELF.renderChildren(child) | raw }}</li>
            {% endfor %}
        </ul>
    {% endif %}
{% endmacro %}

{% import _self as SELF %}
{{ SELF.renderChildren(category) | raw }}
```

A complete github repsitory can be found at [https://github.com/chemin2bonheur/o]() with the README instructions for a quick local installation...

Thanks to help me to pass this stepe:-) !

To soon.