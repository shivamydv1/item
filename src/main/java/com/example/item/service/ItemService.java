package com.example.item.service;

import com.example.item.model.Item;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemService {

    private List<Item> itemList = new ArrayList<>();

    public Item addItem(Item item) {

        if (item.getName() == null || item.getName().isEmpty()) {
            throw new RuntimeException("Item name is required");
        }

        if (item.getPrice() <= 0) {
            throw new RuntimeException("Price must be greater than zero");
        }

        item.setId((long) (itemList.size() + 1));
        itemList.add(item);

        return item;
    }

    public Item getItemById(Long id) {
        return itemList.stream()
                .filter(item -> item.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Item not found"));
    }
}
